package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_383:int = 1;
      
      public static const const_262:int = 2;
      
      public static const const_297:int = 3;
      
      public static const const_336:int = 4;
      
      public static const const_271:int = 5;
      
      public static const const_359:int = 1;
      
      public static const const_694:int = 2;
      
      public static const const_830:int = 3;
      
      public static const const_860:int = 4;
      
      public static const const_218:int = 5;
      
      public static const const_627:int = 6;
      
      public static const const_811:int = 7;
      
      public static const const_233:int = 8;
      
      public static const const_405:int = 9;
      
      public static const const_1946:int = 10;
      
      public static const const_737:int = 11;
      
      public static const const_582:int = 12;
       
      
      private var var_393:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_393 = new Array();
         this.var_393.push(new Tab(this._navigator,const_383,const_582,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_578));
         this.var_393.push(new Tab(this._navigator,const_262,const_359,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_578));
         this.var_393.push(new Tab(this._navigator,const_336,const_737,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1040));
         this.var_393.push(new Tab(this._navigator,const_297,const_218,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_578));
         this.var_393.push(new Tab(this._navigator,const_271,const_233,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_758));
         this.setSelectedTab(const_383);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_336;
      }
      
      public function get tabs() : Array
      {
         return this.var_393;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_393)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_393)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_393)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
