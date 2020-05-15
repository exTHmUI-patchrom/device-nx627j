.class Lcn/nubia/server/presssensor/PressSensorService$3;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 153
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$3;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$3;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$500(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 156
    return-void
.end method
