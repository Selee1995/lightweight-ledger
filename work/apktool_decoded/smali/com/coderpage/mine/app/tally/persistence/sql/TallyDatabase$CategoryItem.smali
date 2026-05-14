.class Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
.super Ljava/lang/Object;
.source "TallyDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryItem"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I

.field private uniqueName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uniqueName",
            "name",
            "icon"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 268
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->name:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->icon:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->uniqueName:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->name:Ljava/lang/String;

    .line 275
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->icon:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->uniqueName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->icon:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)I
    .locals 0

    .line 266
    iget p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->type:I

    return p0
.end method

.method static synthetic access$502(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;I)I
    .locals 0

    .line 266
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->type:I

    return p1
.end method
