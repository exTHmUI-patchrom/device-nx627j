.class public Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;
.super Ljava/lang/Object;
.source "FunctionControllerData.java"


# static fields
.field private static final FUNCTION_DELAY_BROADCAST_MASK:I = 0x10

.field private static final FUNCTION_PRELOADING_RENDERTHREAD_MASK:I = 0x8

.field private static final FUNCTION_PRELOADING_WEBVIEW_MASK:I = 0x4

.field private static final FUNCTION_PRESTART_MASK:I = 0x1

.field private static final FUNCTION_TWO_LEVEL_MASK:I = 0x2


# instance fields
.field private mFunctionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData$1;-><init>(Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->mFunctionMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getFunctionSwitchByMask(I)Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    .locals 2
    .param p1, "MASK"    # I

    .line 33
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->mFunctionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;

    return-object v0
.end method

.method public getFunctionSwitchByName(Ljava/lang/String;)Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    return-object v1

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->mFunctionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 42
    .local v2, "mask":Ljava/lang/Integer;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->mFunctionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;

    .line 43
    .local v3, "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    invoke-interface {v3}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    return-object v3

    .line 46
    .end local v2    # "mask":Ljava/lang/Integer;
    .end local v3    # "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    :cond_1
    goto :goto_0

    .line 47
    :cond_2
    return-object v1
.end method

.method public getMasks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->mFunctionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
