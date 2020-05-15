.class Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NubiaAppNotRespondingParm"
.end annotation


# instance fields
.field public final aboveSystem:Z

.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public final annotation:Ljava/lang/String;

.field public final app:Lcom/android/server/am/ProcessRecord;

.field public final parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p2, "_app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "_aboveSystem"    # Z
    .param p6, "_annotation"    # Ljava/lang/String;

    .line 2240
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2241
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->app:Lcom/android/server/am/ProcessRecord;

    .line 2242
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->activity:Lcom/android/server/am/ActivityRecord;

    .line 2243
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->parent:Lcom/android/server/am/ActivityRecord;

    .line 2244
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->aboveSystem:Z

    .line 2245
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$NubiaAppNotRespondingParm;->annotation:Ljava/lang/String;

    .line 2246
    return-void
.end method
