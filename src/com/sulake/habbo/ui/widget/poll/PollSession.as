package com.sulake.habbo.ui.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class PollSession implements IDisposable
   {
       
      
      private var _id:int = -1;
      
      private var var_1284:PollWidget;
      
      private var var_565:IPollDialog;
      
      private var var_564:IPollDialog;
      
      private var var_1943:String = "";
      
      private var _disposed:Boolean = false;
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         this._id = param1;
         this.var_1284 = param2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_565 != null)
         {
            this.var_565.dispose();
            this.var_565 = null;
         }
         if(this.var_564 != null)
         {
            this.var_564.dispose();
            this.var_564 = null;
         }
         this.var_1284 = null;
         this._disposed = true;
      }
      
      public function showOffer(param1:String) : void
      {
         this.hideOffer();
         this.var_565 = new PollOfferDialog(this._id,param1,this.var_1284);
         this.var_565.start();
      }
      
      public function hideOffer() : void
      {
         if(this.var_565 is PollOfferDialog)
         {
            if(!this.var_565.disposed)
            {
               this.var_565.dispose();
            }
            this.var_565 = null;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         this.hideOffer();
         this.hideContent();
         this.var_1943 = param2;
         this.var_564 = new PollContentDialog(this._id,param1,param3,this.var_1284);
         this.var_564.start();
      }
      
      public function hideContent() : void
      {
         if(this.var_564 is PollContentDialog)
         {
            if(!this.var_564.disposed)
            {
               this.var_564.dispose();
            }
            this.var_564 = null;
         }
      }
      
      public function showThanks() : void
      {
         this.var_1284.windowManager.alert("${poll_thanks_title}",this.var_1943,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
   }
}
