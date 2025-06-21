log() {
  echo -e "${GREEN}✅ [INFO]  $(date +'%Y-%m-%d %H:%M:%S')  $*${NC}"
}

logWarn() {
  echo -e "${YELLOW}⚠️  [WARN]  $(date +'%Y-%m-%d %H:%M:%S')  $*${NC}"
}

logError() {
  echo -e "${RED}❌ [ERROR] $(date +'%Y-%m-%d %H:%M:%S')  $*${NC}" >&2
}

logDebug() {
  echo -e "${BLUE}🐞 [DEBUG] $(date +'%Y-%m-%d %H:%M:%S')  $*${NC}"
}
