.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$2;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 227
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAODMode(I)V
    .locals 1
    .param p1, "device"    # I

    .line 230
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 231
    return-void
.end method
