package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_386:int;
      
      private var _type:String;
      
      private var var_1844:String;
      
      private var var_1846:int;
      
      private var var_1843:String;
      
      private var var_764:String;
      
      private var var_1845:String;
      
      private var var_2268:String;
      
      private var var_2582:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_386 = param1.readInteger();
         this._type = param1.readString();
         this.var_1844 = param1.readString();
         this.var_1846 = param1.readInteger();
         this.var_1843 = param1.readString();
         this.var_764 = param1.readString();
         this.var_2268 = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this.var_764.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_764.charAt(_loc3_)))
         {
            _loc2_ = this.var_764.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1845 = this.var_764.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1845 = this.var_764;
         }
         this.var_2582 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_386 = 0;
         this._type = "";
         this.var_1844 = "";
         this.var_1846 = 0;
         this.var_1843 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_386;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1844;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1846;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1843;
      }
      
      public function get localizationCode() : String
      {
         return this.var_764;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2582;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1845;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2268;
      }
   }
}
