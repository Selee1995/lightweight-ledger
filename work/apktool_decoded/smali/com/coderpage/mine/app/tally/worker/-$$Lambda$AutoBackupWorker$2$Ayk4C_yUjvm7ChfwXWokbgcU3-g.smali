.class public final synthetic Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;->INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$Ayk4C_yUjvm7ChfwXWokbgcU3-g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/coderpage/mine/persistence/document/DocumentFile;

    invoke-static {p1, p2, p3}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;->lambda$success$1(IILcom/coderpage/mine/persistence/document/DocumentFile;)V

    return-void
.end method
