.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/HostapdHal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/HostapdHal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;->f$0:Lcom/android/server/wifi/HostapdHal;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;->f$0:Lcom/android/server/wifi/HostapdHal;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HostapdHal;->lambda$new$2(Lcom/android/server/wifi/HostapdHal;J)V

    return-void
.end method
