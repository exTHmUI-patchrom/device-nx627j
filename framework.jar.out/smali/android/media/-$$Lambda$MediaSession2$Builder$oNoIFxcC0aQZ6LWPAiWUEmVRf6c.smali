.class public final synthetic Landroid/media/-$$Lambda$MediaSession2$Builder$oNoIFxcC0aQZ6LWPAiWUEmVRf6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/update/ProviderCreator;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaSession2$Builder$oNoIFxcC0aQZ6LWPAiWUEmVRf6c;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createProvider(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaSession2$Builder$oNoIFxcC0aQZ6LWPAiWUEmVRf6c;->f$0:Landroid/content/Context;

    check-cast p1, Landroid/media/MediaSession2$BuilderBase;

    invoke-static {v0, p1}, Landroid/media/MediaSession2$Builder;->lambda$new$0(Landroid/content/Context;Landroid/media/MediaSession2$BuilderBase;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    move-result-object p1

    return-object p1
.end method
