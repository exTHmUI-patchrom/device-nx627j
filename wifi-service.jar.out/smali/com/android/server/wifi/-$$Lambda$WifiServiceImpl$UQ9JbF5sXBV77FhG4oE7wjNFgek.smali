.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$UQ9JbF5sXBV77FhG4oE7wjNFgek;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$updateInterfaceIpState$2(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;I)V

    return-void
.end method
