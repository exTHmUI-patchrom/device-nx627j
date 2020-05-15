.class Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLearningProcessKey"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 30026
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .line 30026
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 30032
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 30033
    return v0

    .line 30036
    :cond_0
    instance-of v1, p1, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 30037
    return v2

    .line 30040
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;

    .line 30041
    .local v1, "key":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    iget v3, v1, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 30046
    const/16 v0, 0xa

    .line 30047
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    add-int/2addr v2, v1

    .line 30048
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    return v2
.end method
