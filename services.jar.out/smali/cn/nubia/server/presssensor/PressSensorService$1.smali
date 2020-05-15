.class Lcn/nubia/server/presssensor/PressSensorService$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Lnubia/os/presssensor/InternalPressSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressSensorService;
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

    .line 76
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$1;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressSensorChanged(JII)V
    .locals 8
    .param p1, "whenNanos"    # J
    .param p3, "pressValues"    # I
    .param p4, "pressMask"    # I

    .line 79
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$1;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcn/nubia/server/presssensor/PressSensorService$1$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/presssensor/PressSensorService$1$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService$1;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
