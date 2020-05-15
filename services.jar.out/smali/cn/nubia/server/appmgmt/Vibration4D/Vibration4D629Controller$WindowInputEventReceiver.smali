.class final Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "Vibration4D629Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 532
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 533
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 534
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 539
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$1300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/view/InputEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 544
    goto :goto_1

    .line 543
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Vibration4DService"

    const-string/jumbo v3, "onInputEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 545
    :goto_1
    return-void

    .line 543
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
