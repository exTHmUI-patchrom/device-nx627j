.class public final synthetic Landroid/net/-$$Lambda$Network$KD6DxaMRJIcajhj36TU1K7lJnHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/okhttp/internalandroidapi/Dns;


# instance fields
.field private final synthetic f$0:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$Network$KD6DxaMRJIcajhj36TU1K7lJnHQ;->f$0:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$Network$KD6DxaMRJIcajhj36TU1K7lJnHQ;->f$0:Landroid/net/Network;

    invoke-static {v0, p1}, Landroid/net/Network;->lambda$maybeInitUrlConnectionFactory$0(Landroid/net/Network;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
