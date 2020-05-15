.class public final synthetic Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/provider/Settings$NameValueCache;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/Settings$NameValueCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;->f$0:Landroid/provider/Settings$NameValueCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/provider/-$$Lambda$Settings$NameValueCache$qSyMM6rUAHCa-5rsP-atfAqR3sA;->f$0:Landroid/provider/Settings$NameValueCache;

    invoke-static {v0}, Landroid/provider/Settings$NameValueCache;->lambda$getStringForUser$0(Landroid/provider/Settings$NameValueCache;)V

    return-void
.end method
