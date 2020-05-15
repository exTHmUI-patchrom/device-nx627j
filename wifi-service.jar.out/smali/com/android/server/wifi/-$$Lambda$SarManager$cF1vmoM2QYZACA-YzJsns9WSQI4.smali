.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SarManager$cF1vmoM2QYZACA-YzJsns9WSQI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SarManager$cF1vmoM2QYZACA-YzJsns9WSQI4;->f$0:Lcom/android/server/wifi/SarManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SarManager$cF1vmoM2QYZACA-YzJsns9WSQI4;->f$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v0}, Lcom/android/server/wifi/SarManager;->lambda$handleScreenStateChanged$0(Lcom/android/server/wifi/SarManager;)V

    return-void
.end method
