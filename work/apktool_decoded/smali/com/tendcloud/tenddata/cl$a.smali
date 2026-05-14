.class Lcom/tendcloud/tenddata/cl$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private mIBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/tendcloud/tenddata/cl$a;->mIBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/tendcloud/tenddata/cl$a;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method getOAID()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "com.bun.lib.MsaIdInterface"

    .line 179
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/tendcloud/tenddata/cl$a;->mIBinder:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 181
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 182
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :catchall_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v0
.end method
