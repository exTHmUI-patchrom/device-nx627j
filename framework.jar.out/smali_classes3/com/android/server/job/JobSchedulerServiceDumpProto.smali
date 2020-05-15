.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$PendingJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$PriorityOverride;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$RegisteredJob;
    }
.end annotation


# static fields
.field public static final ACTIVE_JOBS:J = 0x20b0000000aL

.field public static final BACKING_UP_UIDS:J = 0x20500000006L

.field public static final CONTROLLERS:J = 0x20b00000004L

.field public static final CURRENT_HEARTBEAT:J = 0x1050000000eL

.field public static final HISTORY:J = 0x10b00000007L

.field public static final IN_PAROLE:J = 0x10800000012L

.field public static final IS_READY_TO_ROCK:J = 0x1080000000bL

.field public static final LAST_HEARTBEAT_TIME_MILLIS:J = 0x10300000010L

.field public static final MAX_ACTIVE_JOBS:J = 0x1050000000dL

.field public static final NEXT_HEARTBEAT:J = 0x2050000000fL

.field public static final NEXT_HEARTBEAT_TIME_MILLIS:J = 0x10300000011L

.field public static final PACKAGE_TRACKER:J = 0x10b00000008L

.field public static final PENDING_JOBS:J = 0x20b00000009L

.field public static final PRIORITY_OVERRIDES:J = 0x20b00000005L

.field public static final REGISTERED_JOBS:J = 0x20b00000003L

.field public static final REPORTED_ACTIVE:J = 0x1080000000cL

.field public static final SETTINGS:J = 0x10b00000001L

.field public static final STARTED_USERS:J = 0x20500000002L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
