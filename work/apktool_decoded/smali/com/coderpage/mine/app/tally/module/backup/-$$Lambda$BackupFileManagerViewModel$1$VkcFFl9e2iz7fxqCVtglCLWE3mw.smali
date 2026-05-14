.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerViewModel$1$VkcFFl9e2iz7fxqCVtglCLWE3mw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel$1;->lambda$success$1(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)I

    move-result p1

    return p1
.end method
