.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WakeupController$sB8N4NPbyfefFu6fc4L75U1Md4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WakeupController$sB8N4NPbyfefFu6fc4L75U1Md4E;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WakeupController$sB8N4NPbyfefFu6fc4L75U1Md4E;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WakeupController;->lambda$filterDfsScanResults$0(Ljava/util/Set;Landroid/net/wifi/ScanResult;)Z

    move-result p1

    return p1
.end method
