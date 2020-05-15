.class Lcom/android/server/am/ActivityManagerService$PreProcess;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreProcess"
.end annotation


# instance fields
.field mPkg:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 30231
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PreProcess;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30232
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PreProcess;->mPkg:Ljava/lang/String;

    .line 30233
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$PreProcess;->mUid:I

    .line 30234
    return-void
.end method
