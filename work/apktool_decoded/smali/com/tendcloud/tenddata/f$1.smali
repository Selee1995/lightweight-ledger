.class final Lcom/tendcloud/tenddata/f$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tendcloud/tenddata/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/f;
    .locals 1

    .line 121
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/f;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/f;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/f$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/f;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tendcloud/tenddata/f;
    .locals 0

    .line 130
    :try_start_0
    new-array p1, p1, [Lcom/tendcloud/tenddata/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/f$1;->newArray(I)[Lcom/tendcloud/tenddata/f;

    move-result-object p1

    return-object p1
.end method
