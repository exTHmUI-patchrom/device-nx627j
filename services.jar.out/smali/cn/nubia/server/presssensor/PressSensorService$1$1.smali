.class Lcn/nubia/server/presssensor/PressSensorService$1$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$1;->onPressSensorChanged(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$1;

.field final synthetic val$pressMask:I

.field final synthetic val$pressValues:I

.field final synthetic val$whenNanos:J


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$1;JII)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$1;

    .line 79
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$1;

    iput-wide p2, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$whenNanos:J

    iput p4, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$pressValues:I

    iput p5, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$pressMask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$1;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$1;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    iget-wide v1, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$whenNanos:J

    iget v3, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$pressValues:I

    iget v4, p0, Lcn/nubia/server/presssensor/PressSensorService$1$1;->val$pressMask:I

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/server/presssensor/PressSensorService;->access$000(Lcn/nubia/server/presssensor/PressSensorService;JII)V

    .line 82
    return-void
.end method
