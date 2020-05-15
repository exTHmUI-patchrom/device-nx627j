.class Lcn/nubia/server/policy/edge/CommunalService$2;
.super Ljava/lang/Object;
.source "CommunalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/CommunalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/CommunalService;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CommunalService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 283
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService$2;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService$2;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->access$502(Lcn/nubia/server/policy/edge/CommunalService;Z)Z

    .line 287
    return-void
.end method
