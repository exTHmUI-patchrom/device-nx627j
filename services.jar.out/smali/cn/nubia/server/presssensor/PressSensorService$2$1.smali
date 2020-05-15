.class Lcn/nubia/server/presssensor/PressSensorService$2$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$2;->actionPerformedInner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$2;

    .line 134
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iput-object p2, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    const-string v0, "com.chipsea.edgesensor"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$300(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "PressSensorService"

    const-string v1, "enter press sensor test app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$302(Lcn/nubia/server/presssensor/PressSensorService;Z)Z

    .line 140
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$300(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "PressSensorService"

    const-string v1, "exit press sensor test app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$302(Lcn/nubia/server/presssensor/PressSensorService;Z)Z

    .line 146
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$2;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 149
    :cond_1
    :goto_0
    return-void
.end method
