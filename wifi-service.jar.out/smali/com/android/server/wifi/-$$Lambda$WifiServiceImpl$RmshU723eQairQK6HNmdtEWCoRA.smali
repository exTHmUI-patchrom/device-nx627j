.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$RmshU723eQairQK6HNmdtEWCoRA;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$unregisterSoftApCallback$4(Lcom/android/server/wifi/WifiServiceImpl;I)V

    return-void
.end method
