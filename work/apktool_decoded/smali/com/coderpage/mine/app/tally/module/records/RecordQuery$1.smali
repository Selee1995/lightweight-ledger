.class Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;
.super Ljava/lang/Object;
.source "RecordQuery.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coderpage/mine/app/tally/module/records/RecordQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;-><init>(Landroid/os/Parcel;Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 110
    new-array p1, p1, [Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;->newArray(I)[Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    move-result-object p1

    return-object p1
.end method
