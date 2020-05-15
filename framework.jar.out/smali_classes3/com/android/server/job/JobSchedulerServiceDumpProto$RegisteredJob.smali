.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$RegisteredJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegisteredJob"
.end annotation


# static fields
.field public static final DUMP:J = 0x10b00000002L

.field public static final INFO:J = 0x10b00000001L

.field public static final IS_COMPONENT_PRESENT:J = 0x10800000008L

.field public static final IS_JOB_CURRENTLY_ACTIVE:J = 0x10800000006L

.field public static final IS_JOB_PENDING:J = 0x10800000005L

.field public static final IS_JOB_READY:J = 0x10800000003L

.field public static final IS_UID_BACKING_UP:J = 0x10800000007L

.field public static final IS_USER_STARTED:J = 0x10800000004L

.field public static final LAST_RUN_HEARTBEAT:J = 0x10300000009L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerServiceDumpProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerServiceDumpProto$RegisteredJob;->this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
