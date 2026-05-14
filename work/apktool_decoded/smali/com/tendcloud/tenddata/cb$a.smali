.class public final Lcom/tendcloud/tenddata/cb$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private iBinder:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/tendcloud/tenddata/cb$a;->iBinder:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Lcom/tendcloud/tenddata/cb$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/cb$a;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/tendcloud/tenddata/cb$a;->iBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 160
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 163
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/tendcloud/tenddata/cb$a;->iBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 165
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 166
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 168
    :catchall_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 174
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :goto_1
    return-object v0
.end method
