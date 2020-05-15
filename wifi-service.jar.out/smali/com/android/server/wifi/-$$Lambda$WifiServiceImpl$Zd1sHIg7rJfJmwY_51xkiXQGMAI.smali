.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/net/wifi/ISoftApCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$1:I

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$2:Landroid/net/wifi/ISoftApCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$1:I

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$Zd1sHIg7rJfJmwY_51xkiXQGMAI;->f$2:Landroid/net/wifi/ISoftApCallback;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$registerSoftApCallback$3(Lcom/android/server/wifi/WifiServiceImpl;ILandroid/net/wifi/ISoftApCallback;)V

    return-void
.end method
