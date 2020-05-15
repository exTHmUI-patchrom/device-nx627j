.class Landroid/content/pm/RegisteredServicesCache$5;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;

.field final synthetic val$localPersistentServices:Ljava/util/Map;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;ILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/RegisteredServicesCache;

    .line 806
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$5;, "Landroid/content/pm/RegisteredServicesCache$5;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$5;->this$0:Landroid/content/pm/RegisteredServicesCache;

    iput p2, p0, Landroid/content/pm/RegisteredServicesCache$5;->val$userId:I

    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache$5;->val$localPersistentServices:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 809
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$5;, "Landroid/content/pm/RegisteredServicesCache$5;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$5;->this$0:Landroid/content/pm/RegisteredServicesCache;

    iget v1, p0, Landroid/content/pm/RegisteredServicesCache$5;->val$userId:I

    invoke-static {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->access$100(Landroid/content/pm/RegisteredServicesCache;I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 810
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 812
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 813
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 814
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 815
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 816
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 817
    const-string/jumbo v4, "services"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache$5;->val$localPersistentServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 819
    .local v5, "localService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    const-string/jumbo v6, "service"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 820
    const-string/jumbo v6, "uid"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache$5;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v6}, Landroid/content/pm/RegisteredServicesCache;->access$200(Landroid/content/pm/RegisteredServicesCache;)Landroid/content/pm/XmlSerializerAndParser;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 822
    const-string/jumbo v6, "service"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    .end local v5    # "localService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 824
    :cond_0
    const-string/jumbo v4, "services"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 826
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e1":Ljava/io/IOException;
    const-string v3, "PackageManager"

    const-string v4, "Error writing accounts"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    if-eqz v2, :cond_1

    .line 830
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 833
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method
