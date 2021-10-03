package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpSetWelcomeScreenCategoryEvent;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_171:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_309:IHabboCommunicationManager;
      
      private var var_928:IHabboLocalizationManager;
      
      private var var_755:IHabboConfigurationManager;
      
      private var var_299:ISessionDataManager;
      
      private var var_1164:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_66:HelpUI;
      
      private var var_100:TutorialUI;
      
      private var var_754:HotelMergeUI;
      
      private var var_1411:CallForHelpData;
      
      private var var_2554:UserRegistry;
      
      private var var_2066:String = "";
      
      private var var_622:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1411 = new CallForHelpData();
         this.var_2554 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1164 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
         events.addEventListener(HabboHelpSetWelcomeScreenCategoryEvent.const_1155,this.onSetWelcomeScreenCategory);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2066 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2066;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1411;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2554;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_928;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_171;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_299;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_100;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_754;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_100)
         {
            return this.var_100.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_66 != null)
         {
            this.var_66.dispose();
            this.var_66 = null;
         }
         if(this.var_100 != null)
         {
            this.var_100.dispose();
            this.var_100 = null;
         }
         if(this.var_754)
         {
            this.var_754.dispose();
            this.var_754 = null;
         }
         if(this.var_1164 != null)
         {
            this.var_1164.dispose();
            this.var_1164 = null;
         }
         this._incomingMessages = null;
         if(this.var_171)
         {
            this.var_171.release(new IIDHabboToolbar());
            this.var_171 = null;
         }
         if(this.var_928)
         {
            this.var_928.release(new IIDHabboLocalizationManager());
            this.var_928 = null;
         }
         if(this.var_309)
         {
            this.var_309.release(new IIDHabboCommunicationManager());
            this.var_309 = null;
         }
         if(this.var_755)
         {
            this.var_755.release(new IIDHabboConfigurationManager());
            this.var_755 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_299 != null)
         {
            this.var_299.release(new IIDSessionDataManager());
            this.var_299 = null;
         }
         if(this.var_622 != null)
         {
            this.var_622.dispose();
            this.var_622 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_66 != null)
         {
            this.var_66.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_66 != null)
         {
            this.var_66.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_66 != null)
         {
            this.var_66.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_66 != null)
         {
            this.var_66.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_66 != null)
         {
            this.var_66.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1164;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_309 != null && param1 != null)
         {
            this.var_309.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_755 == null)
         {
            return param1;
         }
         return this.var_755.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_66 != null)
         {
            this.var_66.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_66 != null)
         {
            this.var_66.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1411.reportedUserId = param1;
         this.var_1411.reportedUserName = param2;
         this.var_66.showUI(HabboHelpViewEnum.const_344);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_66 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_66.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_66 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_66 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_928,this.var_171);
         }
         return this.var_66 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_100 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_100 = new TutorialUI(this,_loc1_);
         }
         return this.var_100 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_100 != null)
         {
            this.var_100.dispose();
            this.var_100 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_754)
         {
            this.var_754 = new HotelMergeUI(this);
         }
         this.var_754.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_100 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_100.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_100)
         {
            this.var_100.showView(TutorialUI.const_317);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_309 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_309);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_171 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_928 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_755 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_89,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_96,this.onRoomSessionEvent);
         this.var_171.events.addEventListener(HabboToolbarEvent.const_64,this.onHabboToolbarEvent);
         this.var_171.events.addEventListener(HabboToolbarEvent.const_36,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_299 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_89:
               if(this.var_66 != null)
               {
                  this.var_66.setRoomSessionStatus(true);
               }
               if(this.var_100 != null)
               {
                  this.var_100.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_96:
               if(this.var_66 != null)
               {
                  this.var_66.setRoomSessionStatus(false);
               }
               if(this.var_100 != null)
               {
                  this.var_100.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_622)
         {
            this.var_622 = new WelcomeScreenController(this,this._windowManager,this.var_755);
         }
         this.var_622.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_171 != null)
         {
            this.var_171.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_144,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_64)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_36)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
      
      private function onSetWelcomeScreenCategory(param1:HabboHelpSetWelcomeScreenCategoryEvent) : void
      {
         if(!this.var_622)
         {
            this.showWelcomeScreen(true);
         }
         this.var_622.setCategory(param1.iconId,param1.localizationCode);
      }
   }
}
