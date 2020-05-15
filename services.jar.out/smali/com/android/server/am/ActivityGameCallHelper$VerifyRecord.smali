.class public Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;
.super Ljava/lang/Object;
.source "ActivityGameCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityGameCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyRecord"
.end annotation


# instance fields
.field mAttachActivity:Lcom/android/server/am/ActivityRecord;

.field mPackageName:Ljava/lang/String;

.field mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

.field mVerifyId:I

.field mVerifyWithStart:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityGameCallHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityGameCallHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityGameCallHelper;
    .param p2, "verifyWithStart"    # Z
    .param p3, "verifyId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attachActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "startIntentInfo"    # Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->this$0:Lcom/android/server/am/ActivityGameCallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean p2, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mVerifyWithStart:Z

    .line 126
    iput p3, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mVerifyId:I

    .line 127
    iput-object p4, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    .line 129
    iput-object p6, p0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    .line 130
    return-void
.end method
