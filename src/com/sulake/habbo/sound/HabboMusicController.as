package com.sulake.habbo.sound
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.incoming.sound.TraxSongInfoMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetSongInfoMessageComposer;
   import com.sulake.habbo.communication.messages.parser.sound.TraxSongInfoMessageParser;
   import com.sulake.habbo.sound.trax.TraxSequencer;
   import flash.events.IEventDispatcher;
   
   public class HabboMusicController implements IHabboMusicController, IDisposable
   {
      
      private static const const_1332:int = -1;
       
      
      private var var_600:HabboSoundManagerFlash10;
      
      private var _connection:IConnection;
      
      private var _events:IEventDispatcher;
      
      private var var_81:IEventDispatcher;
      
      private var var_221:Map;
      
      private var var_497:Array;
      
      private var var_1161:Map;
      
      private var var_1162:Map;
      
      private var var_1815:RoomItemPlayListController = null;
      
      private var _disposed:Boolean = false;
      
      private var var_303:Map;
      
      private var var_925:int;
      
      public function HabboMusicController(param1:HabboSoundManagerFlash10, param2:IEventDispatcher, param3:IEventDispatcher, param4:IConnection)
      {
         this.var_221 = new Map();
         this.var_497 = new Array();
         this.var_1161 = new Map();
         this.var_1162 = new Map();
         this.var_303 = new Map();
         this.var_925 = HabboMusicPrioritiesEnum.const_1133;
         super();
         this.var_600 = param1;
         this._events = param2;
         this.var_81 = param3;
         this._connection = param4;
         this.var_1815 = new RoomItemPlayListController(param1,this,param2,param3,param4);
         this._connection.addMessageEvent(new TraxSongInfoMessageEvent(this.onSongInfoMessage));
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_600 = null;
            this._connection = null;
            this.var_497 = null;
            this.var_1815 = null;
            if(this.var_221)
            {
               this.var_221.dispose();
               this.var_221 = null;
            }
            this._disposed = true;
         }
      }
      
      public function getRoomItemPlaylist(param1:int = -1) : IPlayListController
      {
         return this.var_1815 as IPlayListController;
      }
      
      public function playSong(param1:int, param2:int, param3:Number = 0) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(this.var_303.getKeys().indexOf(param2) != -1)
         {
            this.var_303.add(param2,param1);
         }
         else
         {
            this.var_303[param2] = param1;
         }
         var _loc4_:TraxSequencer = this.var_221.getValue(param1) as TraxSequencer;
         if(_loc4_ == null)
         {
            this.requestSongInfo(param1);
            _loc5_ = new Date();
            this.var_1161.add(param1,_loc5_.getTime());
            this.var_1162.add(param1,param3);
            return false;
         }
         this.var_1162[param1] = param3;
         if(!_loc4_.ready)
         {
            return false;
         }
         if(param2 >= this.var_925)
         {
            for each(_loc6_ in this.var_303.getValues())
            {
               _loc4_ = this.var_221.getValue(_loc6_) as TraxSequencer;
               if(_loc4_ != null && _loc6_ != param1)
               {
                  _loc4_.stop();
               }
            }
            this.playSongObject(param1,param3);
            Logger.log("Started playing song: " + param1);
            this.var_925 = param2;
         }
         else
         {
            Logger.log("Song play was rejected because of low priority: " + param1);
         }
         return true;
      }
      
      public function stopSong(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IHabboSound = this.var_221.getValue(param1) as IHabboSound;
         if(_loc2_ != null)
         {
            _loc2_.stop();
         }
         var _loc3_:int = this.var_303.getValues().indexOf(_loc2_);
         if(_loc3_ != -1)
         {
            _loc4_ = this.var_303.getKeys()[_loc3_];
            this.var_303.remove(_loc4_);
            this.var_925 = this.getTopPriority();
         }
      }
      
      public function previewSong(param1:int, param2:int) : void
      {
      }
      
      public function getSongObject(param1:int) : IHabboSound
      {
         return this.var_221.getValue(param1) as IHabboSound;
      }
      
      public function updateVolume(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         for each(_loc2_ in this.var_303.getKeys())
         {
            _loc3_ = this.var_221.getValue(_loc2_) as IHabboSound;
            if(_loc3_ == null)
            {
               _loc3_.volume = param1;
            }
         }
      }
      
      public function onSongLoaded(param1:int) : void
      {
         var _loc2_:int = this.var_303[this.var_925];
         Logger.log("Song loaded : " + param1);
         if(param1 == _loc2_)
         {
            this.playSongObject(param1,this.var_1162[param1]);
         }
      }
      
      public function requestSongInfo(param1:int) : void
      {
         if(this.var_221.getValue(param1) != null)
         {
            return;
         }
         if(this._connection == null)
         {
            return;
         }
         if(this.var_497.indexOf(param1) == -1)
         {
            this.var_497.push(param1);
            if(this.var_497.length == 1)
            {
               this._connection.send(new GetSongInfoMessageComposer(param1));
               Logger.log("Requested song info : " + param1);
            }
         }
      }
      
      private function onSongInfoMessage(param1:IMessageEvent) : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc2_:TraxSongInfoMessageEvent = param1 as TraxSongInfoMessageEvent;
         var _loc3_:TraxSongInfoMessageParser = _loc2_.getParser() as TraxSongInfoMessageParser;
         var _loc4_:* = this.var_221.getKeys().indexOf(_loc3_.id) == -1;
         this.var_497.splice(this.var_497.indexOf(_loc3_.id),1);
         if(_loc4_)
         {
            _loc5_ = this.var_221[_loc3_.id] as IHabboSound;
            if(_loc5_ == null)
            {
               _loc5_ = this.var_600.loadTraxSong(_loc3_.id,_loc3_.data);
               this.var_221.add(_loc3_.id,_loc5_);
               _loc6_ = this.var_303[this.var_925];
               if(_loc5_.ready && _loc3_.id == _loc6_)
               {
                  this.playSongObject(_loc6_,this.var_1162[_loc6_]);
               }
            }
         }
         if(this.var_497.length >= 1)
         {
            this._connection.send(new GetSongInfoMessageComposer(this.var_497[0]));
         }
         Logger.log("Received song info : " + _loc3_.id);
      }
      
      private function playSongObject(param1:int, param2:Number = -1) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc3_:IHabboSound = this.var_221.getValue(param1) as IHabboSound;
         if(_loc3_ == null)
         {
            Logger.log("WARNING: Unable to find song id " + param1 + " that was supposed to be loaded.");
            return false;
         }
         if(!_loc3_.ready)
         {
            return false;
         }
         _loc3_.volume = this.var_600.volume;
         if(param2 != const_1332)
         {
            _loc3_.position = param2;
            if(this.var_1161.getKeys().indexOf(param1) != -1)
            {
               _loc4_ = new Date();
               _loc5_ = (_loc4_.getTime() - this.var_1161[param1]) / 1000;
               _loc3_.position += _loc5_;
               this.var_1161.remove(param1);
            }
         }
         _loc3_.play();
         Logger.log("Started playing song : " + param1 + " at position : " + _loc3_.position);
         return true;
      }
      
      private function getTopPriority() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = -1;
         for each(_loc2_ in this.var_303.getKeys())
         {
            if(_loc2_ > _loc1_)
            {
               _loc1_ = _loc2_;
            }
         }
         return _loc1_;
      }
   }
}
