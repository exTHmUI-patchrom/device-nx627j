.class Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;
.super Ljava/util/HashMap;
.source "FunctionControllerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    .line 18
    iput-object p1, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreStartSwitcher;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreStartSwitcher;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreLoadingWebViewSwitcher;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreLoadingWebViewSwitcher;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreLoadingRenderThreadSwitcher;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/functionswitch/switcher/PreLoadingRenderThreadSwitcher;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/switcher/DelayBroadcastSwitcher;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/functionswitch/switcher/DelayBroadcastSwitcher;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
