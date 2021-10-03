package com.sulake.habbo.sound
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.sound.NowPlayingMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListEntry;
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListSongAddedMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetNowPlayingMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetPlayListMessageComposer;
   import com.sulake.habbo.communication.messages.parser.sound.NowPlayingMessageParser;
   import com.sulake.habbo.communication.messages.parser.sound.PlayListMessageParser;
   import com.sulake.habbo.communication.messages.parser.sound.PlayListSongAddedMessageParser;
   import com.sulake.habbo.room.events.RoomObjectSoundMachineStateUpdateEvent;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class RoomItemPlayListController implements IPlayListController, IDisposable
   {
       
      
      private var var_600:HabboSoundManagerFlash10;
      
      private var var_646:HabboMusicController;
      
      private var _connection:IConnection;
      
      private var _events:IEventDispatcher;
      
      private var var_81:IEventDispatcher;
      
      private var var_443:int = -1;
      
      private var var_96:Array;
      
      private var var_529:Boolean;
      
      private var _disposed:Boolean = false;
      
      public function RoomItemPlayListController(param1:HabboSoundManagerFlash10, param2:HabboMusicController, param3:IEventDispatcher, param4:IEventDispatcher, param5:IConnection)
      {
         this.var_96 = new Array();
         super();
         this.var_600 = param1;
         this._events = param3;
         this.var_81 = param4;
         this._connection = param5;
         this.var_646 = param2;
         this._connection.addMessageEvent(new PlayListMessageEvent(this.onPlayListMessage));
         this._connection.addMessageEvent(new PlayListSongAddedMessageEvent(this.onPlayListSongAddedMessage));
         this._connection.addMessageEvent(new NowPlayingMessageEvent(this.onNowPlayingMessage));
         this._events.addEventListener(SoundCompleteEvent.const_751,this.onSongFinishedPlayingEvent);
         this.var_81.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_616,this.onSoundMachinePlayEvent);
         this.var_81.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_882,this.onSoundMachineStopEvent);
         this.var_81.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_638,this.onJukeboxPlayEvent);
         this.var_81.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_784,this.onJukeboxStopEvent);
         this.var_81.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_506,this.onDisposeEvent);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get priority() : int
      {
         return HabboMusicPrioritiesEnum.const_1133;
      }
      
      public function get length() : int
      {
         return this.var_96.length;
      }
      
      public function get playPosition() : int
      {
         return -1;
      }
      
      public function set playPosition(param1:int) : void
      {
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_529)
            {
               this.stopPlaying();
            }
            this.var_600 = null;
            this._connection = null;
            this.var_96 = null;
            this.var_646 = null;
            if(this._events)
            {
               this._events.removeEventListener(SoundCompleteEvent.const_751,this.onSongFinishedPlayingEvent);
               this._events = null;
            }
            if(this.var_81)
            {
               this.var_81.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_616,this.onSoundMachinePlayEvent);
               this.var_81.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_882,this.onSoundMachineStopEvent);
               this.var_81.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_638,this.onJukeboxPlayEvent);
               this.var_81.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_784,this.onJukeboxStopEvent);
               this.var_81.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_506,this.onDisposeEvent);
               this.var_81 = null;
            }
            this._disposed = true;
         }
      }
      
      private function onSoundMachinePlayEvent(param1:Event) : void
      {
         this.startPlaying();
      }
      
      private function onSoundMachineStopEvent(param1:Event) : void
      {
         this.stopPlaying();
      }
      
      private function onJukeboxPlayEvent(param1:Event) : void
      {
         if(!this.var_529)
         {
            this.requestNowPlaying();
            this.var_529 = true;
         }
      }
      
      private function onJukeboxStopEvent(param1:Event) : void
      {
         this.stopPlaying();
      }
      
      private function onDisposeEvent(param1:Event) : void
      {
         this.stopPlaying();
         this.var_96 = new Array();
      }
      
      public function startPlaying() : void
      {
         if(this.var_529)
         {
            return;
         }
         if(this.var_96 == null || this.var_96.length == 0)
         {
            this.requestPlayList();
            this.var_529 = true;
            return;
         }
         this.stopPlaying();
         this.var_443 = -1;
         this.var_529 = true;
         this.playNextSong();
      }
      
      public function checkSongPlayState(param1:int) : void
      {
         var _loc2_:* = null;
         if(this.var_443 == param1)
         {
            this.playCurrentSongAndNotify(this.var_443);
            _loc2_ = this.getNextEntry();
            if(_loc2_ != null)
            {
               this.var_646.requestSongInfo(_loc2_.id);
            }
         }
      }
      
      public function stopPlaying() : void
      {
         this.var_646.stopSong(this.var_443);
         this.var_443 = -1;
         this.var_529 = false;
      }
      
      public function updateVolume(param1:Number) : void
      {
         var _loc2_:IHabboSound = this.var_646.getSongObject(this.var_443);
         if(_loc2_ != null)
         {
            _loc2_.volume = param1;
         }
      }
      
      public function addItem(param1:Object, param2:int = 0) : int
      {
         return -1;
      }
      
      public function moveItem(param1:int, param2:int) : void
      {
      }
      
      public function removeItem(param1:int) : void
      {
      }
      
      private function onSongFinishedPlayingEvent(param1:Event) : void
      {
         this.playNextSong();
      }
      
      private function playNextSong() : void
      {
         var _loc1_:PlayListEntry = this.getNextEntry();
         if(_loc1_ != null)
         {
            this.var_443 = _loc1_.id;
            this.playCurrentSongAndNotify(this.var_443);
         }
      }
      
      private function playCurrentSongAndNotify(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:PlayListEntry = this.getEntry(param1) as PlayListEntry;
         if(_loc2_ == null)
         {
            return;
         }
         if(this.var_646.playSong(param1,this.priority,0))
         {
            _loc4_ = 4;
         }
         if(_loc2_.length >= _loc4_)
         {
            this.var_600.notifyPlayedSong(_loc2_.name,_loc2_.creator);
         }
         _loc2_.startPlayHeadPos = 0;
         Logger.log("Playing trax song: " + _loc2_.name + " by " + _loc2_.creator);
      }
      
      private function getNextEntry() : PlayListEntry
      {
         var _loc2_:* = null;
         if(this.var_96 == null || this.var_96.length == 0)
         {
            return null;
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_96.length)
         {
            _loc2_ = this.var_96[_loc3_];
            if(_loc2_.id == this.var_443)
            {
               _loc1_ = _loc3_ + 1;
            }
            _loc3_++;
         }
         if(_loc1_ >= this.var_96.length)
         {
            _loc1_ = 0;
         }
         return this.var_96[_loc1_];
      }
      
      public function getEntry(param1:int) : Object
      {
         var _loc2_:* = null;
         if(this.var_96 == null || this.var_96.length == 0)
         {
            return null;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.var_96.length)
         {
            _loc2_ = this.var_96[_loc3_];
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function requestPlayList() : void
      {
         if(this._connection == null)
         {
            return;
         }
         this._connection.send(new GetPlayListMessageComposer());
      }
      
      private function requestNowPlaying() : void
      {
         if(this._connection == null)
         {
            return;
         }
         this._connection.send(new GetNowPlayingMessageComposer());
      }
      
      private function onPlayListMessage(param1:IMessageEvent) : void
      {
         var _loc6_:* = null;
         var _loc8_:int = 0;
         var _loc2_:PlayListMessageEvent = param1 as PlayListMessageEvent;
         var _loc3_:PlayListMessageParser = _loc2_.getParser() as PlayListMessageParser;
         var _loc4_:int = _loc3_.synchronizationCount;
         var _loc5_:Array = _loc3_.playList;
         if(_loc5_ == null || _loc5_.length == 0)
         {
            return;
         }
         this.var_96 = _loc5_;
         var _loc7_:int = 0;
         _loc8_ = 0;
         while(_loc8_ < _loc5_.length)
         {
            _loc6_ = this.var_96[_loc8_];
            _loc7_ += _loc6_.length;
            _loc8_++;
         }
         _loc4_ %= _loc7_;
         _loc8_ = 0;
         while(_loc8_ < _loc5_.length)
         {
            _loc6_ = this.var_96[_loc8_];
            if(_loc4_ <= _loc6_.length)
            {
               this.var_443 = _loc6_.id;
               _loc6_.startPlayHeadPos = Number(_loc4_) / 1000;
            }
            _loc4_ -= _loc6_.length;
            _loc8_++;
         }
         if(_loc6_ != null && this.var_529)
         {
            this.playCurrentSongAndNotify(_loc6_.id);
         }
      }
      
      private function onPlayListSongAddedMessage(param1:IMessageEvent) : void
      {
         var _loc2_:PlayListSongAddedMessageEvent = param1 as PlayListSongAddedMessageEvent;
         var _loc3_:PlayListSongAddedMessageParser = _loc2_.getParser() as PlayListSongAddedMessageParser;
         var _loc4_:PlayListEntry = _loc3_.entry;
         if(_loc4_ == null)
         {
            return;
         }
         this.var_96.push(_loc4_);
         if(this.var_96.length == 1)
         {
            this.playCurrentSongAndNotify(_loc4_.id);
         }
         else
         {
            this.checkSongPlayState(_loc4_.id);
         }
      }
      
      private function onNowPlayingMessage(param1:IMessageEvent) : void
      {
         var _loc2_:NowPlayingMessageEvent = param1 as NowPlayingMessageEvent;
         var _loc3_:NowPlayingMessageParser = _loc2_.getParser() as NowPlayingMessageParser;
         this.stopPlaying();
         this.var_646.playSong(_loc3_.current,this.priority,_loc3_.syncCount);
         this.var_646.requestSongInfo(_loc3_.next);
         this.var_529 = true;
         Logger.log("Received Now Playing message with: " + _loc3_.current + ", " + _loc3_.next + ", " + _loc3_.syncCount);
      }
   }
}
