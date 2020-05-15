.class Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
.super Ljava/lang/Object;
.source "NubiaNotSatisfiedJobs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/NubiaNotSatisfiedJobs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobRecord"
.end annotation


# instance fields
.field mJobId:I

.field mUid:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mUid:I

    .line 103
    iput p2, p0, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mJobId:I

    .line 104
    return-void
.end method
