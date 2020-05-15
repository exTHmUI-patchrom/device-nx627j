.class Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;
.super Ljava/lang/Object;
.source "ApplicationDynamicController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 48
    iput-object p1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 51
    const-string v0, "app_dynamic_controller.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$002(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Z)Z

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$200(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$102(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$100(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "controller":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$300(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->getFunctionSwitchByName(Ljava/lang/String;)Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;

    move-result-object v3

    .line 59
    .local v3, "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$100(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 60
    .local v4, "enable":Z
    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v3}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionState()Z

    move-result v5

    if-eq v5, v4, :cond_1

    .line 62
    invoke-interface {v3, v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->setFunctionState(Z)V

    .line 63
    invoke-static {}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const-string v5, "AppDynamicController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initData: function="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface {v3}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v2    # "controller":Ljava/lang/String;
    .end local v3    # "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    .end local v4    # "enable":Z
    :cond_1
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$002(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Z)Z

    .line 70
    return-void
.end method
