package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1688:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_190:MsgWithRequestId;
      
      private var var_566:RoomEventData;
      
      private var var_2152:Boolean;
      
      private var var_2160:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2151:int;
      
      private var var_239:GuestRoomData;
      
      private var var_849:PublicRoomShortData;
      
      private var var_2159:int;
      
      private var var_2153:Boolean;
      
      private var var_2157:int;
      
      private var var_2158:Boolean;
      
      private var var_1608:int;
      
      private var var_2156:Boolean;
      
      private var var_1299:Array;
      
      private var var_1297:Array;
      
      private var var_2155:int;
      
      private var var_1298:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1055:Boolean;
      
      private var var_2161:int;
      
      private var var_2150:Boolean;
      
      private var var_2154:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1299 = new Array();
         this.var_1297 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_239 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_239 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_849 = null;
         this.var_239 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_849 = param1.publicSpace;
            this.var_566 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_566 != null)
         {
            this.var_566.dispose();
            this.var_566 = null;
         }
         if(this.var_849 != null)
         {
            this.var_849.dispose();
            this.var_849 = null;
         }
         if(this.var_239 != null)
         {
            this.var_239.dispose();
            this.var_239 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_239 != null)
         {
            this.var_239.dispose();
         }
         this.var_239 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_566 != null)
         {
            this.var_566.dispose();
         }
         this.var_566 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_190 != null && this.var_190 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_190 != null && this.var_190 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_190 != null && this.var_190 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_190 = param1;
         this.var_1055 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_190 = param1;
         this.var_1055 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_190 = param1;
         this.var_1055 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_190 == null)
         {
            return;
         }
         this.var_190.dispose();
         this.var_190 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_190 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_190 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_190 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_566;
      }
      
      public function get avatarId() : int
      {
         return this.var_2151;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2152;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2160;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_239;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_849;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2153;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2157;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1608;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2158;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2161;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2159;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2156;
      }
      
      public function get adIndex() : int
      {
         return this.var_2154;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2150;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2151 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2157 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2153 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2152 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2160 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2158 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1608 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2159 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2156 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2154 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2150 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1299 = param1;
         this.var_1297 = new Array();
         for each(_loc2_ in this.var_1299)
         {
            if(_loc2_.visible)
            {
               this.var_1297.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1299;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1297;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2155 = param1.limit;
         this.var_1298 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1298 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_239.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_239 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_239.flatId;
         return this.var_1608 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1298 >= this.var_2155;
      }
      
      public function startLoading() : void
      {
         this.var_1055 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1055;
      }
   }
}
