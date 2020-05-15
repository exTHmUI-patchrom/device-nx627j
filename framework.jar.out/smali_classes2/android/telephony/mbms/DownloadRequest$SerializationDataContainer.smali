.class Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationDataContainer"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private destination:Landroid/net/Uri;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$000(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$100(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    .line 74
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$200(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    .line 75
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$300(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    .line 76
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$400(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$500(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    .line 78
    return-void
.end method

.method static synthetic access$1000(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    return v0
.end method

.method static synthetic access$600(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return v0
.end method

.method static synthetic access$900(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 61
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    .line 93
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    .line 94
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    .line 95
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    .line 96
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    .line 97
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 83
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 87
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 88
    return-void
.end method
