.class public Landroid/media/MediaCas$PluginDescriptor;
.super Ljava/lang/Object;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginDescriptor"
.end annotation


# instance fields
.field private final mCASystemId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const v0, 0xffff

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method constructor <init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget v0, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->caSystemId:I

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 171
    iget-object v0, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginDescriptor {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
