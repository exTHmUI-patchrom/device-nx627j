.class Landroid/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "this$0"    # Landroid/media/MediaScanner;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fileList"    # Landroid/database/Cursor;

    .line 2281
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2282
    iput-object p2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2284
    new-instance v0, Landroid/sax/RootElement;

    const-string/jumbo v1, "smil"

    invoke-direct {v0, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 2285
    .local v0, "root":Landroid/sax/RootElement;
    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 2286
    .local v1, "body":Landroid/sax/Element;
    const-string/jumbo v2, "seq"

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 2287
    .local v2, "seq":Landroid/sax/Element;
    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 2288
    .local v3, "media":Landroid/sax/Element;
    invoke-virtual {v3, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2290
    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 2291
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .line 2303
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 2306
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 2295
    const-string v0, ""

    const-string/jumbo v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2297
    iget-object v1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    iget-object v2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    :cond_0
    return-void
.end method
