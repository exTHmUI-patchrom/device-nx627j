.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field private final synthetic f$1:Lcom/android/server/wifi/rtt/RttNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;->f$1:Lcom/android/server/wifi/rtt/RttNative;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$ehyq-_xe9BYccoyltP3Gc2lh51g;->f$1:Lcom/android/server/wifi/rtt/RttNative;

    invoke-static {v0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->lambda$start$0(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttNative;)V

    return-void
.end method
