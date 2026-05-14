.class public final synthetic Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$55bHz0G1Q91whdXPgmPp_rjIo14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$55bHz0G1Q91whdXPgmPp_rjIo14;->f$0:J

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$2$55bHz0G1Q91whdXPgmPp_rjIo14;->f$0:J

    check-cast p1, Lcom/coderpage/mine/persistence/document/DocumentFile;

    invoke-static {v0, v1, p1}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$2;->lambda$success$0(JLcom/coderpage/mine/persistence/document/DocumentFile;)Z

    move-result p1

    return p1
.end method
