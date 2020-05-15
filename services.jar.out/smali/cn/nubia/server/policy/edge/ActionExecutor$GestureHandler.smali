.class Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;
.super Landroid/os/Handler;
.source "ActionExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 116
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method

.method private handleMessageInner(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 130
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 131
    .local v0, "action":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/edgegesture/EdgeGesture;

    .line 132
    .local v1, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3000

    if-eq v2, v3, :cond_3

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5000

    if-eq v2, v3, :cond_1

    const/16 v3, 0x6000

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$1000(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 155
    goto :goto_0

    .line 149
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$900(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 152
    goto :goto_0

    .line 143
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$500(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 144
    goto :goto_0

    .line 146
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$800(Lcn/nubia/server/policy/edge/ActionExecutor;I)V

    .line 147
    goto :goto_0

    .line 140
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$700(Lcn/nubia/server/policy/edge/ActionExecutor;I)V

    .line 141
    goto :goto_0

    .line 134
    :cond_6
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$500(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 135
    goto :goto_0

    .line 137
    :cond_7
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$600(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 138
    nop

    .line 159
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->handleMessageInner(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
