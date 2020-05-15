.class public final Lcom/android/server/job/StateControllerProto$ConnectivityController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectivityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ConnectivityController$TrackedJob;
    }
.end annotation


# static fields
.field public static final IS_CONNECTED:J = 0x10800000001L

.field public static final TRACKED_JOBS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/StateControllerProto;

    .line 79
    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$ConnectivityController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
