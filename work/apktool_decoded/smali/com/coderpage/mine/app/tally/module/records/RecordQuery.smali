.class public Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
.super Ljava/lang/Object;
.source "RecordQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;,
        Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coderpage/mine/app/tally/module/records/RecordQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private categoryUniqueNameArray:[Ljava/lang/String;

.field private endTime:J

.field private startTime:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->startTime:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->endTime:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    return p1
.end method

.method static synthetic access$302(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->startTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->endTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method buildSql()Ljava/lang/String;
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_time >= "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and record_time <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    const-string v2, " and record_type = "

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 81
    sget-object v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v3, v1, v2}, Lcom/coderpage/base/utils/ArrayUtils;->join(Ljava/lang/CharSequence;Lcom/coderpage/base/utils/ArrayUtils$Function;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "and record_category_unique_name in ("

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryUniqueNameArray()[Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->startTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 116
    iget p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->categoryUniqueNameArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
