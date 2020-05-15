.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDeathRecipient"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1592
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1594
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1597
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V

    .line 1598
    return-void
.end method
