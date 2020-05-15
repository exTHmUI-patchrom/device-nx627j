.class Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$LocalService;->noteKeyguardStateChanged(I)V
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

    .line 599
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iput p2, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;->this$1:Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$800(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureMutex;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;->val$state:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->noteKeyguardStateChanged(I)V

    .line 602
    return-void
.end method
