.class public Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
.super Ljava/lang/Object;
.source "ActivityTimeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityTimeLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyRecord"
.end annotation


# instance fields
.field mAttachActivity:Lcom/android/server/am/ActivityRecord;

.field mPackageName:Ljava/lang/String;

.field mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

.field mVerifyId:I

.field mVerifyWithStart:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityTimeLockHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityTimeLockHelper;
    .param p2, "verifyWithStart"    # Z
    .param p3, "verifyId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attachActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "startIntentInfo"    # Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    .line 535
    iput-object p1, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->this$0:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-boolean p2, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyWithStart:Z

    .line 537
    iput p3, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    .line 538
    iput-object p4, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    .line 539
    iput-object p5, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    .line 540
    iput-object p6, p0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    .line 541
    return-void
.end method
