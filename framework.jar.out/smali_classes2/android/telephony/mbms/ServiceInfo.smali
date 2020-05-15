.class public Landroid/telephony/mbms/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# static fields
.field static final MAP_LIMIT:I = 0x3e8


# instance fields
.field private final className:Ljava/lang/String;

.field private final locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceId:Ljava/lang/String;

.field private final sessionEndTime:Ljava/util/Date;

.field private final sessionStartTime:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "mapCount":I
    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 82
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .local v2, "mapCount":I
    if-lez v0, :cond_0

    .line 83
    .end local v0    # "mapCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 84
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v3    # "name":Ljava/lang/String;
    nop

    .line 82
    move v0, v2

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "localesCount":I
    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 93
    :goto_1
    add-int/lit8 v1, v0, -0x1

    .local v1, "localesCount":I
    if-lez v0, :cond_1

    .line 94
    .end local v0    # "localesCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 95
    .local v0, "l":Ljava/util/Locale;
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v0    # "l":Ljava/util/Locale;
    nop

    .line 93
    move v0, v1

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 100
    return-void

    .line 90
    .end local v1    # "localesCount":I
    .local v0, "localesCount":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad locale length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v2    # "mapCount":I
    .local v0, "mapCount":I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad map length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 3
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p4, "newServiceId"    # Ljava/lang/String;
    .param p5, "start"    # Ljava/util/Date;
    .param p6, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "newLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1

    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    iput-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 70
    iput-object p4, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 71
    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 72
    invoke-virtual {p6}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 73
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad locales length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ServiceInfo construction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 186
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 187
    return v1

    .line 189
    :cond_1
    instance-of v2, p1, Landroid/telephony/mbms/ServiceInfo;

    if-nez v2, :cond_2

    .line 190
    return v1

    .line 192
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/telephony/mbms/ServiceInfo;

    .line 193
    .local v2, "that":Landroid/telephony/mbms/ServiceInfo;
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 196
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 197
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 193
    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    return-object v0
.end method

.method public getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 131
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Locale not supported"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamedContentLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceClassName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionEndTime()Ljava/util/Date;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSessionStartTime()Ljava/util/Date;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 107
    .local v2, "l":Ljava/util/Locale;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .end local v2    # "l":Ljava/util/Locale;
    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 112
    .local v1, "localesCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 114
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    .end local v3    # "l":Ljava/util/Locale;
    goto :goto_1

    .line 116
    :cond_1
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 118
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 119
    return-void
.end method
