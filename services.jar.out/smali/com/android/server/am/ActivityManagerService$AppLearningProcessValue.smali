.class Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLearningProcessValue"
.end annotation


# instance fields
.field adj:I

.field compressed:Z

.field swappness:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 30052
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30055
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;->compressed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .line 30052
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method
