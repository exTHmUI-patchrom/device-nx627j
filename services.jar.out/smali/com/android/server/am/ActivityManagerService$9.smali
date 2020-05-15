.class Lcom/android/server/am/ActivityManagerService$9;
.super Ljava/util/HashMap;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 9103
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9105
    const-string v0, "cn.nubia.mms"

    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9106
    const-string v0, "cn.nubia.contacts"

    const-string/jumbo v1, "vnd.android.cursor.dir/person"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9107
    return-void
.end method
