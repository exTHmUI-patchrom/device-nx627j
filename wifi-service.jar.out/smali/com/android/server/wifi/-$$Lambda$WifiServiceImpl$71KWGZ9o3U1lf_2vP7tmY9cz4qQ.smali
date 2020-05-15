.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    iput p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$2:I

    iput-object p4, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    iget v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$2:I

    iget-object v3, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$71KWGZ9o3U1lf_2vP7tmY9cz4qQ;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$startScan$0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;ILjava/lang/String;)V

    return-void
.end method
