.class public Landroid/hardware/usb/AccessoryFilter;
.super Ljava/lang/Object;
.source "AccessoryFilter.java"


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "manufacturer":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "model":Ljava/lang/String;
    const/4 v2, 0x0

    .line 65
    .local v2, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 66
    .local v3, "count":I
    const/4 v4, 0x0

    .line 66
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 67
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "manufacturer"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    move-object v0, v6

    goto :goto_1

    .line 72
    :cond_0
    const-string/jumbo v7, "model"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    move-object v1, v6

    goto :goto_1

    .line 74
    :cond_1
    const-string/jumbo v7, "version"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    move-object v2, v6

    .line 66
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v4, v0, v1, v2}, Landroid/hardware/usb/AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public contains(Landroid/hardware/usb/AccessoryFilter;)Z
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/AccessoryFilter;

    .line 109
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 113
    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 6
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 157
    .local v0, "token":J
    const-string/jumbo v2, "manufacturer"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 158
    const-string/jumbo v2, "model"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    const-wide v4, 0x10900000002L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 159
    const-string/jumbo v2, "version"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 162
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    instance-of v0, p1, Landroid/hardware/usb/AccessoryFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/AccessoryFilter;

    .line 124
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    move v1, v2

    goto :goto_0

    .line 126
    :cond_1
    nop

    .line 124
    :goto_0
    return v1

    .line 128
    .end local v0    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_2
    instance-of v0, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_4

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 130
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    move v1, v2

    goto :goto_1

    .line 132
    :cond_3
    nop

    .line 130
    :goto_1
    return v1

    .line 134
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_4
    return v1

    .line 120
    :cond_5
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 139
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    move v0, v1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 141
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    .line 139
    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    .line 96
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 98
    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const-string/jumbo v0, "usb-accessory"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "manufacturer"

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v0, "model"

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 90
    const-string/jumbo v0, "version"

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    :cond_2
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    return-void
.end method
