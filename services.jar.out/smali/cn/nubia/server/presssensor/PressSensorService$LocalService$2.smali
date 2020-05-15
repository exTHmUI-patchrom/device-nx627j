.class Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$LocalService;->noteScreenStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$LocalService;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    .line 586
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iput p2, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    iget v1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;->val$state:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$2102(Lcn/nubia/server/presssensor/PressSensorService;Z)Z

    .line 589
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 590
    return-void
.end method
