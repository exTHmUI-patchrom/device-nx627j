.class final Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowingModeTransitionInfoSnapshot"
.end annotation


# instance fields
.field final activityRecordIdHashCode:I

.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field final launchedActivityName:Ljava/lang/String;

.field final launchedActivityShortComponentName:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field private final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/am/ProcessRecord;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field final type:I

.field final userId:I

.field final windowsDrawnDelayMs:I

.field final windowsFullyDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 218
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)V

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "x2"    # Lcom/android/server/am/ActivityMetricsLogger$1;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 223
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;I)V

    .line 224
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "windowsFullyDrawnDelayMs"    # I

    .line 227
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 230
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 231
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 232
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 233
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 236
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    .line 237
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 238
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 239
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 240
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 241
    invoke-static {p1, p3}, Lcom/android/server/am/ActivityMetricsLogger;->access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    .line 242
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 243
    iget v0, p3, Lcom/android/server/am/ActivityRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 244
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 245
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 246
    iput p4, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "x2"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/server/am/ActivityMetricsLogger$1;

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object v0
.end method
