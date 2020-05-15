.class Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDeathRecipient"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1324
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1326
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1329
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V

    .line 1330
    return-void
.end method
