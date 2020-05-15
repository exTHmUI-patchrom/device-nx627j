.class public final Lcom/android/server/am/NubiaAppRatioWhileList;
.super Ljava/lang/Object;
.source "NubiaAppRatioWhileList.java"


# static fields
.field public static sNubiaAppRatioWhileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "com.android.systemui"

    const-string v1, "com.tencent.game.rhythmmaster"

    const-string v2, "com.tencent.tmgp.yxzj"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaAppRatioWhileList;->sNubiaAppRatioWhileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
